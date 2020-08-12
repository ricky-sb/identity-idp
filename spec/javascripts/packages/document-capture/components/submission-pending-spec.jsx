import React from 'react';
import { render } from '@testing-library/react';
import SubmissionPending from '@18f/identity-document-capture/components/submission-pending';

describe('document-capture/components/submission-pending', () => {
  it('renders interstitial content', () => {
    const { getByText } = render(<SubmissionPending />);

    const heading = getByText('We are processing your images…');

    expect(document.activeElement).to.equal(heading);
    expect(heading).to.be.ok();
  });
});
